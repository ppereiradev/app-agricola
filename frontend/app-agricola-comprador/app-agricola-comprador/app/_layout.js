import "@/global.css";
import { Stack } from "expo-router";
import { GluestackUIProvider } from "@/components/ui/gluestack-ui-provider";
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'

// Create a client
const queryClient = new QueryClient()

export default function RootLayout() {
    return (
        <QueryClientProvider client={queryClient}>
            <GluestackUIProvider mode="system">
                <Stack>
                    <Stack.Screen name="index" options={{ title: "Produtos" }} />
                    <Stack.Screen name="product/[id]" options={{ title: "Detalhes" }} />
                </Stack>
            </GluestackUIProvider>
        </QueryClientProvider>
    );
}
