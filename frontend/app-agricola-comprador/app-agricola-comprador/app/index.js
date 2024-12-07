import { FlatList } from 'react-native';
import ProductListItem from '@/components/ProductListItem';
import products from '@/assets/product.json';
import { Button, ButtonText } from '@/components/ui/button';


export default function HomeScreen() {
  return (
      <FlatList
        className="p-2"
        contentContainerClassName="gap-2"
        columnWrapperClassName="gap-2"
        data={products}
        renderItem={({item}) => <ProductListItem product={item} />}
        numColumns={2}
      />
  );
}
