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
              <Text bold className="text-lg">{item.product.name}</Text>
              <Text bold>R$ {
                  (Math.round((
                    Number(item.product.price) * Number(item.quantity)
                  ) * 100) / 100).toFixed(2).replace(".",",")
                }</Text>
              <Text className="text-sm">Un.: R$ {item.product.price.replace(".",",")}</Text>
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
