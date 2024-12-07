import { FlatList, StyleSheet, Text, View } from 'react-native';
import ProductListItem from '../components/ProductListItem';
import products from '../assets/product.json';


export default function HomeScreen() {
  return (
      <FlatList
        data={products}
        renderItem={({item}) => <ProductListItem product={item} />}
      />
  );
}

const styles = StyleSheet.create({
  container: {
    fontSize:30,
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
