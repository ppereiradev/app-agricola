import { Card } from "@/components/ui/card";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Box } from "@/components/ui/box";
import { Heading } from "@/components/ui/heading";
import { Button, ButtonText } from "@/components/ui/button";
import { Image } from "@/components/ui/image";
import { Link } from "expo-router";
import { Pressable } from "react-native";

export default function ProductListItem(props) {

    return (
        <Link href={`/product/${props.product.id}`} asChild>
            <Pressable className="flex-1">
                <Card className="p-5 rounded-lg max-w-[360px] flex-1">
                    <Image
                        source={{
                        uri: props.product.image,
                        }}
                        className="mb-6 h-[120px] w-full rounded-md"
                        alt="image"
                        resizeMode="contain"
                    />
                    <Text className="text-sm font-normal mb-2 text-typography-700">
                        {props.product.name}
                    </Text>
                    <Heading size="md" className="mb-4">
                        R$ {props.product.price}
                    </Heading>
                </Card>
            </Pressable>
        </Link>
      );
}
