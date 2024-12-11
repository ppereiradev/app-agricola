import "@/global.css";
import { Link, Stack } from "expo-router";
import { GluestackUIProvider } from "@/components/ui/gluestack-ui-provider";
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Pressable } from "react-native";
import { Text } from '@/components/ui/text';
import { useCart } from '@/store/cartStore';
import { useAuth } from '@/store/authStore';
import Feather from '@expo/vector-icons/Feather';

import { useRouter } from "expo-router";
import { useEffect } from "react";

// Create a client
const queryClient = new QueryClient()

export default function RootLayout() {

    const items = useCart((state) => state.items);
    const user = useAuth((state) => state.user);
    const router = useRouter();
    const numberCartItems = items.length;

    useEffect(() => {
        if (user == null) {
            router.replace("/login");
        } else {
            router.replace("/");
        }
    }, [user]);

    return (
        <QueryClientProvider client={queryClient}>
            <GluestackUIProvider mode="system">
                <Stack
                    screenOptions={{
                        headerRight: () => (
                            <>
                                <Link href={"/login"} asChild>
                                    <Pressable className="mr-5">
                                        <Feather name="user" size={24} color="black" />
                                    </Pressable>
                                </Link>

                                <Link href={"/cart"} asChild>
                                    <Pressable className="flex-row gap-2 mr-5">
                                        <Feather name="shopping-cart" size={24} color="black" />
                                        <Text>{numberCartItems}</Text>
                                    </Pressable>
                                </Link>
                            </>
                        ),
                    }}
                >
                    <Stack.Screen name="index" options={{ title: "Produtos" }} />
                    <Stack.Screen name="product/[id]" options={{ title: "Detalhes" }} />
                </Stack>
            </GluestackUIProvider>
        </QueryClientProvider>
    );
}
