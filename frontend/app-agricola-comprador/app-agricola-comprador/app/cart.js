import { StyleSheet, Text, View } from 'react-native';

export default function CartScreen() {
  return (
    <View style={styles.container}>
      <Text>CART SCREEN!!!</Text>
    </View>
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
