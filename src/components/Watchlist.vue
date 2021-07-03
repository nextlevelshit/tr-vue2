<template>
  <ul>
    <li
      v-for="product in products"
      :key="product.isin"
      @click="removeProduct(product.isin)"
    >
      {{ product.displayName }}
    </li>
  </ul>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "Watchlist",
  props: {
    products: Array,
    isStale: Boolean,
  },
  methods: {
    removeProduct: (isin: string): void => {
      console.log(isin);
    },
  },
  updated(): void {
    console.log("updated");
  },
});
</script>

<style scoped lang="scss">
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;

  > li {
    padding: 1rem;

    + li {
      border-top: 1px solid #c8c8c8;
    }
  }
}
</style>
