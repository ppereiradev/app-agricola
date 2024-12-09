import { Stack } from "expo-router";
import { useCart } from '@/store/cartStore';

import { HStack } from '@/components/ui/hstack';
import { VStack } from '@/components/ui/vstack';
import { Text } from '@/components/ui/text';
import { Box } from '@/components/ui/box';
import { View, FlatList, Alert } from 'react-native';
import { Button, ButtonText } from '@/components/ui/button';


export default function CartScreen() {

  const items = useCart((state) => state.items);
  const resetCart = useCart((state) => state.resetCart);
  const numberCartItems = items.reduce((total, item) => total + item.quantity, 0);


  const checkout = async () => {
    resetCart();
  }

  return (
    <>
      <Stack.Screen options={{ title: `Carrinho` }} />
      <FlatList
        data={items}
        contentContainerClassName="gap-2 max-w-[960px] w-full mx-auto p-2"
        renderItem={({ item }) => (
          <HStack className="bg-white p-3">
            <VStack space="sm">
              <Text bold>{item.product.name}</Text>
              <Text>R$ {item.product.price.replace(".",",")}</Text>
            </VStack>
            <Text className="ml-auto">{item.quantity}</Text>
          </HStack>
        )}
        ListFooterComponent={() => (
          <Box className="flex-1 gap-2">
            <Button onPress={checkout}>
              <ButtonText>Comprar</ButtonText>
            </Button>

            <Button
              variant="outline"
              className="px-4 py-2 border-outline-300 sm:flex-1"
              onPress={resetCart}
            >
              <ButtonText size="sm" className="text-typography-600">
                  Limpar Carrinho
              </ButtonText>
            </Button>
          </Box>
        )}
      />
    </>
  );
}
