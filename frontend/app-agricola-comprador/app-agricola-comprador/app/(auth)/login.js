import { useState } from 'react';
import { Stack } from "expo-router";
import { FormControl } from '@/components/ui/form-control';
import { Card } from '@/components/ui/card';
import { VStack } from '@/components/ui/vstack';
import { Heading } from '@/components/ui/heading';
import { Text } from '@/components/ui/text';
import { Input, InputField, InputSlot } from '@/components/ui/input';
import { Button, ButtonText } from '@/components/ui/button';

import Feather from '@expo/vector-icons/Feather';
import { useAuth } from '@/store/authStore';
import { useRouter } from "expo-router";
import { useEffect } from "react";

import { getUserByUsername } from '@/api/users';


export default function LoginScreen() {

    const user = useAuth((state) => state.user);
    const setUser = useAuth((state) => state.setUser);
    const setUsername = useAuth((state) => state.setUsername);
    const router = useRouter();

    useEffect(() => {
        if (user != null) {
            router.replace("/");
        }
    }, [user]);

    const [usernameInput, setUsernameInput] = useState();

    const handelChangeUsername = function(event) {
        setUsernameInput(event.target.value);
      }


    const login = async () => {
        setUsername(usernameInput);
        router.replace("/")
    };

    const [showPassword, setShowPassword] = useState(false);
    const handleState = () => {
      setShowPassword((showState) => {
        return !showState;
      });
    };

    return (
        <Card className="p-5 rounded-lg flex-1">
            <Stack.Screen options={{ title: `Acessar` }} />
            <FormControl
                className='p-4 border rounded-lg border-outline-300'
            >
                <VStack space='xl'>
                <Heading className='text-typography-900 leading-3'>
                    Entrar
                </Heading>
                <VStack space='xs'>
                    <Text className='text-typography-500 leading-1'>
                    Username
                    </Text>
                    <Input>
                    <InputField
                        type="text"
                        onChange={handelChangeUsername}
                    />
                    </Input>
                </VStack>
                <VStack space='xs'>
                    <Text className='text-typography-500 leading-1'>
                    Senha
                    </Text>
                    <Input className='text-center'>
                    <InputField
                        type={showPassword ? 'text' : 'password'}
                    />
                    <InputSlot className='pr-3' onPress={handleState}>
                    {
                        showPassword ? (
                            <Feather name="eye" size={24} color="black" />
                        ) : (
                            <Feather name="eye-off" size={24} color="black" />
                        )
                    }
                    </InputSlot>
                    </Input>
                </VStack>
                <Button
                    className='ml-auto'
                    onPress={login}
                >
                    <ButtonText className='text-typography-0'>
                    Entrar
                    </ButtonText>
                </Button>
                </VStack>
            </FormControl>
        </Card>
    );
  }
