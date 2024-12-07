import { Card } from "@/components/ui/card";
import { Text } from "@/components/ui/text";
import { Heading } from "@/components/ui/heading";
import { Image } from "@/components/ui/image";
import { Link } from "expo-router";
import { Pressable } from "react-native";

export default function ProductListItem(props) {

    return (
        <Link href={`/product/${props.product.id}`} asChild>
            <Pressable className="flex-1">
                <Card className="p-5 rounded-lg flex-1">
                    <Image
                        source={{
                        uri: props.product.image,
                        }}
                        className="mb-6 w-full rounded-md"
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
