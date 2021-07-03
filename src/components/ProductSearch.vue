<template>
  <section>
    <input
      type="text"
      placeholder="Search for ISIN or Product Name"
      @input="search"
    />
    <ul>
      <li
        v-for="product in predefinedProductList"
        :key="product.isin"
        @click="select(product)"
      >
        {{ product.displayName }}
      </li>
    </ul>
  </section>
</template>

<script lang="ts">
import Vue from "vue";
import { Product } from "@/models/Product.model";

export default Vue.extend({
  name: "ProductSearch",
  data: () => {
    return {
      query: String,
      predefinedProductList: [
        {
          isin: "DE000BASF111",
          displayName: "BASF",
        },
      ],
    };
  },
  methods: {
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    search: (event: any): void => {
      if (!event?.target?.value) {
        return;
      }
      const { value: query } = event.target;
      console.log("Searching for", query);
    },
    select({ displayName, isin }: Product): void {
      this.$emit("closeSearch", true);
      this.$emit("selectProduct", { displayName, isin } as Product);
    },
  },
});
</script>

<style scoped lang="scss">
section {
  display: flex;
  flex-direction: column;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background: #fff;
}
</style>
