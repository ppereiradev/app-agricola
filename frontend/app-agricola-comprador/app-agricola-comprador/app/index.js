import { ActivityIndicator, FlatList } from 'react-native';
import ProductListItem from '@/components/ProductListItem';
import { Text } from '@/components/ui/text';
import products from '@/assets/product.json';
import { useQuery } from '@tanstack/react-query';

import { getProducts } from '@/api/products';


export default function HomeScreen() {

  const { data, isLoading, error } = useQuery({
    queryKey: ["product"],
    queryFn: getProducts,
  });

  if(isLoading) {
    return <ActivityIndicator />;
  }

  if(error){
    return <Text>Erro ao buscar produtos!</Text>;
  }

  return (
      <FlatList
        className="p-2"
        contentContainerClassName="gap-2"
        columnWrapperClassName="gap-2"
        data={data}
        renderItem={({item}) => <ProductListItem product={item} />}
        numColumns={2}
      />
  );
}
