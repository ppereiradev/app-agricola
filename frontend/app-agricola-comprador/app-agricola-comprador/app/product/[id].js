import { ActivityIndicator } from 'react-native';

import { Text } from "@/components/ui/text";
import { Card } from "@/components/ui/card";
import { VStack } from "@/components/ui/vstack";
import { Box } from "@/components/ui/box";
import { Heading } from "@/components/ui/heading";
import { Button, ButtonText } from "@/components/ui/button";
import { Image } from "@/components/ui/image";

import { Stack, useLocalSearchParams } from "expo-router";

import { useQuery } from '@tanstack/react-query';

import { getProductById } from '@/api/products';
import { useCart } from '@/store/cartStore';

export default function ProductDetailsScreen() {

    const {id} = useLocalSearchParams();
    const addProduct = useCart((state) => state.addProduct);
    const items = useCart((state) => state.items);

    const { data:product, isLoading, error } = useQuery({
        queryKey: ["product", id],
        queryFn: () => getProductById(id),
    });

    const addToCart = () => {
        addProduct(product);
    }

    const productIndex = items.findIndex(item =>
        JSON.stringify(item.product) === JSON.stringify(product)
    );

    if(isLoading) {
    return <ActivityIndicator />;
    }

    if(error){
    return <Text>Erro ao buscar produto!</Text>;
    }

    if(!product){
        return (
            <Text>Product not found!</Text>
        );
    }
    return (
        <Card className="p-5 rounded-lg flex-1">
            <Stack.Screen options={{ title: `${product.name}` }} />
            <Image
                source={{
                uri: product.image,
                }}
                className="mb-6 h-[120px] w-full rounded-md"
                alt="image"
                resizeMode="contain"
            />
            <Text className="text-lg font-normal mb-2 text-typography-700">
                {product.name}
            </Text>
            <Text className="text-sm font-normal mb-2 text-typography-700">
                Quantidade: {productIndex != -1 ? items[productIndex].quantity : 0}
            </Text>
            <VStack className="mb-6">
                <Heading size="md" className="mb-4">
                R$ {product.price.replace('.', ',')}
                </Heading>
                <Text size="sm">
                {product.description}
                </Text>
            </VStack>
            <Box className="flex-col sm:flex-row">
                <Button onPress={addToCart} className="px-4 py-2 mr-0 mb-3 sm:mr-3 sm:mb-0 sm:flex-1">
                <ButtonText size="sm">Adicionar ao carrinho</ButtonText>
                </Button>
            </Box>
        </Card>
    );
}
