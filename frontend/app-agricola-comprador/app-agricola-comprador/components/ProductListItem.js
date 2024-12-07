import { Card } from "@/components/ui/card";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Box } from "@/components/ui/box";
import { Heading } from "@/components/ui/heading";
import { Button, ButtonText } from "@/components/ui/button";
import { Image } from "@/components/ui/image";


export default function ProductListItem(props) {

    return (
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
          <VStack className="mb-6">
            <Heading size="md" className="mb-4">
              R$ {props.product.price}
            </Heading>
            <Text size="sm">
              {props.product.description}
            </Text>
          </VStack>
          <Box className="flex-col sm:flex-row">
            <Button className="px-4 py-2 mr-0 mb-3 sm:mr-3 sm:mb-0 sm:flex-1">
              <ButtonText size="sm">Add to cart</ButtonText>
            </Button>
            <Button
              variant="outline"
              className="px-4 py-2 border-outline-300 sm:flex-1"
            >
              <ButtonText size="sm" className="text-typography-600">
                Wishlist
              </ButtonText>
            </Button>
          </Box>
        </Card>
      );
}
