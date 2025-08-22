import React, { useState } from 'react';
import { View, Text, TextInput, Button, Alert, StyleSheet } from 'react-native';

export default function App() {
  const [usuario, setUsuario] = useState('');
  const [clave, setClave] = useState('');

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Login</Text>
      
      <TextInput
        placeholder="Usuario"
        onChangeText={setUsuario}
        value={usuario}
        style={styles.input}
      />
      
      <TextInput
        placeholder="Contraseña"
        secureTextEntry
        onChangeText={setClave}
        value={clave}
        style={styles.input}
      />
      
      <Button
        title="Ingresar"
        onPress={() => Alert.alert("Bienvenido " + usuario)}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    padding: 20,
    flex: 1,
    justifyContent: 'center',
  },
  title: {
    fontSize: 24,
    marginBottom: 20,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  input: {
    borderWidth: 1,
    borderColor: '#999',
    padding: 10,
    marginVertical: 10,
    borderRadius: 5,
  },
});
