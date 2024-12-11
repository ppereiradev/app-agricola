import { ActivityIndicator, FlatList } from 'react-native';
import ProductListItem from '@/components/ProductListItem';
import { Text } from '@/components/ui/text';
import products from '@/assets/product.json';
import { useQuery } from '@tanstack/react-query';

import { getProducts } from '@/api/products';
import { getUserByUsername } from '@/api/users';

import { useAuth } from '@/store/authStore';

export default function HomeScreen() {

  const username = useAuth((state) => state.username);
  const setUser = useAuth((state) => state.setUser);

  const { data:dataProduct, isLoading:isLoadingProduct, error:errorProduct } = useQuery({
    queryKey: ["product"],
    queryFn: getProducts,
  });

  const { data:dataUser, isLoading:isLoadingUser, error:errorUser } = useQuery({
    queryKey: ["username", username],
    queryFn: () => getUserByUsername(username),
  });


  if(dataUser){
    setUser(dataUser);
  }

  if(isLoadingProduct) {
    return <ActivityIndicator />;
  }

  if(errorProduct){
    return <Text>Erro ao buscar produtos!</Text>;
  }

  return (
      <FlatList
        className="p-2"
        contentContainerClassName="gap-2"
        columnWrapperClassName="gap-2"
        data={dataProduct}
        renderItem={({item}) => <ProductListItem product={item} />}
        numColumns={2}
      />
  );
}
